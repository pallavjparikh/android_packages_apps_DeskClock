.class public Lcom/android/deskclock/ScreensaverActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "ScreensaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ScreensaverActivity$InteractionListener;,
        Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMainClockView:Landroid/view/View;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;

.field private final mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "ScreensaverActivity"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/ScreensaverActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;-><init>(Lcom/android/deskclock/ScreensaverActivity;Lcom/android/deskclock/ScreensaverActivity$1;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 53
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ScreensaverActivity$1;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-static {}, Lcom/android/deskclock/Utils;->isPreL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/android/deskclock/ScreensaverActivity$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/ScreensaverActivity$2;-><init>(Lcom/android/deskclock/ScreensaverActivity;Landroid/os/Handler;)V

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 86
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ScreensaverActivity$3;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100()Lcom/android/deskclock/LogUtils$Logger;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/deskclock/ScreensaverActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/ScreensaverActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/deskclock/ScreensaverActivity;->updateWakeLock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/deskclock/ScreensaverActivity;)Lcom/android/deskclock/MoveScreensaverRunnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private startPositionUpdater()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private stopPositionUpdater()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mStartPositionUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 224
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    invoke-virtual {p0}, Lcom/android/deskclock/MoveScreensaverRunnable;->stop()V

    return-void
.end method

.method private updateWakeLock(Z)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 201
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    .line 203
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x480081

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 205
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x480082

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 207
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110155

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    const p1, 0x7f1101d9

    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    const p1, 0x7f0d003c

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0104

    .line 109
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    .line 110
    iget-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    .line 112
    iget-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    const v0, 0x7f0a0089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    const v1, 0x7f0a004a

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AnalogClock;

    .line 116
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/deskclock/Utils;->setClockIconTypeface(Landroid/view/View;)V

    .line 117
    move-object v1, p1

    check-cast v1, Landroid/widget/TextClock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;Z)V

    .line 118
    invoke-static {p1, v0}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 119
    iget-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    .line 122
    iget-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    const/16 v0, 0xc07

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$InteractionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/ScreensaverActivity$InteractionListener;-><init>(Lcom/android/deskclock/ScreensaverActivity;Lcom/android/deskclock/ScreensaverActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 129
    new-instance p1, Lcom/android/deskclock/MoveScreensaverRunnable;

    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMainClockView:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Lcom/android/deskclock/MoveScreensaverRunnable;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mPositionUpdater:Lcom/android/deskclock/MoveScreensaverRunnable;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "com.android.deskclock.extra.EVENT_LABEL"

    .line 133
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const p1, 0x7f110183

    .line 134
    invoke-static {p1, p0}, Lcom/android/deskclock/events/Events;->sendScreensaverEvent(II)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 176
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    .line 177
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->stopPositionUpdater()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->startPositionUpdater()V

    .line 166
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->addMidnightCallback(Ljava/lang/Runnable;J)V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "plugged"

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 170
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/deskclock/ScreensaverActivity;->updateWakeLock(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/android/deskclock/BaseActivity;->onStart()V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    const-string v0, "next_alarm_formatted"

    .line 153
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
