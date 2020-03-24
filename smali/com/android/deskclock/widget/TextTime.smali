.class public Lcom/android/deskclock/widget/TextTime;
.super Landroid/widget/TextView;
.source "TextTime.java"


# static fields
.field static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final UTC:Ljava/util/TimeZone;


# instance fields
.field private mAttached:Z

.field private mFormat:Ljava/lang/CharSequence;

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHour:I

.field private mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 46
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/widget/TextTime;->UTC:Ljava/util/TimeZone;

    const-string v0, "h:mm a"

    .line 49
    sput-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    .line 51
    sput-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lcom/android/deskclock/widget/TextTime$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/deskclock/widget/TextTime$1;-><init>(Lcom/android/deskclock/widget/TextTime;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x0

    const p2, 0x3e99999a    # 0.3f

    .line 89
    invoke-static {p2, p1}, Lcom/android/deskclock/Utils;->get12ModeFormat(FZ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/deskclock/widget/TextTime;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {p1}, Lcom/android/deskclock/Utils;->get24ModeFormat(Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/TextTime;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 92
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/widget/TextTime;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/widget/TextTime;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    return-void
.end method

.method private chooseFormat()V
    .locals 1

    .line 122
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    :cond_0
    iput-object v0, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    :cond_2
    iput-object v0, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 167
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/android/deskclock/widget/TextTime;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 169
    iget v1, p0, Lcom/android/deskclock/widget/TextTime;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 170
    iget v1, p0, Lcom/android/deskclock/widget/TextTime;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 171
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 133
    iget-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    .line 135
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->registerObserver()V

    .line 136
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 143
    iget-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->unregisterObserver()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    .line 104
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    .line 105
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;

    .line 117
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    .line 118
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    return-void
.end method

.method public setTime(II)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/android/deskclock/widget/TextTime;->mHour:I

    .line 161
    iput p2, p0, Lcom/android/deskclock/widget/TextTime;->mMinute:I

    .line 162
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    return-void
.end method
