.class public Lcom/android/deskclock/AnalogClock;
.super Landroid/widget/FrameLayout;
.source "AnalogClock.java"


# instance fields
.field private final mClockTick:Ljava/lang/Runnable;

.field private mDescFormat:Ljava/lang/String;

.field private mEnableSeconds:Z

.field private final mHourHand:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mMinuteHand:Landroid/widget/ImageView;

.field private final mSecondHand:Landroid/widget/ImageView;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p2, Lcom/android/deskclock/AnalogClock$1;

    invoke-direct {p2, p0}, Lcom/android/deskclock/AnalogClock$1;-><init>(Lcom/android/deskclock/AnalogClock;)V

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance p2, Lcom/android/deskclock/AnalogClock$2;

    invoke-direct {p2, p0}, Lcom/android/deskclock/AnalogClock$2;-><init>(Lcom/android/deskclock/AnalogClock;)V

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    .line 85
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mDescFormat:Ljava/lang/String;

    .line 89
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const p3, 0x7f080074

    .line 90
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mHourHand:Landroid/widget/ImageView;

    .line 95
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mHourHand:Landroid/widget/ImageView;

    const p3, 0x7f080075

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 100
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mMinuteHand:Landroid/widget/ImageView;

    const p3, 0x7f080076

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object p2, p0, Lcom/android/deskclock/AnalogClock;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    .line 105
    iget-object p1, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    const p2, 0x7f080077

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object p1, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object p1, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AnalogClock;)Ljava/util/TimeZone;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/deskclock/AnalogClock;->mTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/deskclock/AnalogClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/AnalogClock;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/deskclock/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/AnalogClock;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    return p0
.end method

.method private onTimeChanged()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    .line 142
    iget-object v1, p0, Lcom/android/deskclock/AnalogClock;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    .line 144
    iget-object v2, p0, Lcom/android/deskclock/AnalogClock;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 145
    iget-boolean v0, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 147
    iget-object v1, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mDescFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public enableSeconds(Z)V
    .locals 1

    .line 160
    iput-boolean p1, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    .line 161
    iget-boolean p1, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object p0, p0, Lcom/android/deskclock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/AnalogClock;->mSecondHand:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    .line 123
    invoke-direct {p0}, Lcom/android/deskclock/AnalogClock;->onTimeChanged()V

    .line 126
    iget-boolean v0, p0, Lcom/android/deskclock/AnalogClock;->mEnableSeconds:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/deskclock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 154
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/AnalogClock;->mTimeZone:Ljava/util/TimeZone;

    .line 155
    iget-object p1, p0, Lcom/android/deskclock/AnalogClock;->mTime:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/deskclock/AnalogClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    invoke-direct {p0}, Lcom/android/deskclock/AnalogClock;->onTimeChanged()V

    return-void
.end method
