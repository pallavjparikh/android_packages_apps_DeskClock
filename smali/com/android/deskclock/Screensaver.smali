.class public final Lcom/android/deskclock/Screensaver;
.super Landroid/service/dreams/DreamService;
.source "Screensaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/Screensaver$StartPositionUpdater;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private final mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mAnalogClock:Lcom/android/deskclock/AnalogClock;

.field private mContentView:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDigitalClock:Landroid/widget/TextClock;

.field private mMainClockView:Landroid/view/View;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;

.field private final mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "Screensaver"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/Screensaver;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 41
    new-instance v0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/Screensaver$StartPositionUpdater;-><init>(Lcom/android/deskclock/Screensaver;Lcom/android/deskclock/Screensaver$1;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 54
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/deskclock/Screensaver$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/Screensaver$1;-><init>(Lcom/android/deskclock/Screensaver;Landroid/os/Handler;)V

    :goto_0
    iput-object v1, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/android/deskclock/Screensaver$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$2;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/deskclock/Screensaver$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$3;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/Screensaver;)Lcom/android/deskclock/MoveScreensaverRunnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/Screensaver;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private setClockStyle()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setScreensaverClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 166
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getScreensaverNightModeOn()Z

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMainClockView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    xor-int/lit8 v0, v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setScreenBright(Z)V

    return-void
.end method

.method private startPositionUpdater()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private stopPositionUpdater()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    invoke-virtual {p0}, Lcom/android/deskclock/MoveScreensaverRunnable;->stop()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .line 92
    sget-object v0, Lcom/android/deskclock/Screensaver;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Screensaver attached to window"

    invoke-virtual {v0, v3, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    const v0, 0x7f0d003c

    .line 95
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setContentView(I)V

    const v0, 0x7f0a0104

    .line 97
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    const v2, 0x7f0a00c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMainClockView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mMainClockView:Landroid/view/View;

    const v2, 0x7f0a0089

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/widget/TextClock;

    .line 100
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mMainClockView:Landroid/view/View;

    const v2, 0x7f0a004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AnalogClock;

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    .line 102
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->setClockStyle()V

    .line 103
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/deskclock/Utils;->setClockIconTypeface(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/widget/TextClock;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;Z)V

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    const/16 v2, 0xc07

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 113
    new-instance v0, Lcom/android/deskclock/MoveScreensaverRunnable;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mMainClockView:Landroid/view/View;

    invoke-direct {v0, v2, v3}, Lcom/android/deskclock/MoveScreensaverRunnable;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    .line 116
    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    .line 120
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/service/dreams/DreamService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    const-string v0, "next_alarm_formatted"

    .line 127
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->startPositionUpdater()V

    .line 135
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->addMidnightCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 158
    sget-object v0, Lcom/android/deskclock/Screensaver;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Screensaver configuration changed"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->startPositionUpdater()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 81
    sget-object v0, Lcom/android/deskclock/Screensaver;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Screensaver created"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f1201a5

    .line 83
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setTheme(I)V

    .line 84
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const v0, 0x7f110155

    .line 86
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    const v0, 0x7f1101d9

    .line 87
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 140
    sget-object v0, Lcom/android/deskclock/Screensaver;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Screensaver detached from window"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    .line 148
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->stopPositionUpdater()V

    .line 151
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
