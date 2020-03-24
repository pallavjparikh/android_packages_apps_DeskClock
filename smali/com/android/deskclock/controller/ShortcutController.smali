.class Lcom/android/deskclock/controller/ShortcutController;
.super Ljava/lang/Object;
.source "ShortcutController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mShortcutManager:Landroid/content/pm/ShortcutManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mComponentName:Landroid/content/ComponentName;

    .line 60
    iget-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    iput-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 61
    iget-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/deskclock/controller/ShortcutController;->mUserManager:Landroid/os/UserManager;

    .line 62
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object p1

    new-instance v0, Lcom/android/deskclock/events/ShortcutEventTracker;

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/deskclock/events/ShortcutEventTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/deskclock/controller/Controller;->addEventTracker(Lcom/android/deskclock/events/EventTracker;)V

    .line 63
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    new-instance v0, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;-><init>(Lcom/android/deskclock/controller/ShortcutController;Lcom/android/deskclock/controller/ShortcutController$1;)V

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->addStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/controller/ShortcutController;)Landroid/os/UserManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/controller/ShortcutController;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/controller/ShortcutController;->createStopwatchShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/controller/ShortcutController;)Landroid/content/pm/ShortcutManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    return-object p0
.end method

.method private createNewAlarmShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/deskclock/HandleApiCalls;

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.deskclock.extra.EVENT_LABEL"

    const v2, 0x7f1101ea

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    const v2, 0x7f1101ae

    const v3, 0x7f110174

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v3, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800d6

    .line 91
    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mComponentName:Landroid/content/ComponentName;

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f110226

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x7f110225

    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private createNewTimerShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/deskclock/HandleApiCalls;

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.deskclock.extra.EVENT_LABEL"

    const v2, 0x7f1101ea

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    const v2, 0x7f1101b4

    const v3, 0x7f110174

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v3, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800d7

    .line 108
    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mComponentName:Landroid/content/ComponentName;

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f110228

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x7f110227

    .line 111
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private createScreensaverShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/deskclock/ScreensaverActivity;

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.deskclock.extra.EVENT_LABEL"

    const v2, 0x7f1101ea

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    const v2, 0x7f1101b2

    const v3, 0x7f110183

    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v3, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800d8

    .line 153
    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mComponentName:Landroid/content/ComponentName;

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f11022c

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x7f11022b

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    const/4 v0, 0x3

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private createStopwatchShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 5

    .line 118
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11017e

    goto :goto_0

    :cond_0
    const v0, 0x7f110185

    .line 120
    :goto_0
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    const v2, 0x7f1101b3

    .line 121
    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800d9

    .line 123
    invoke-static {v0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/controller/ShortcutController;->mComponentName:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v1

    const v2, 0x7f1101ea

    const-string v3, "com.android.deskclock.extra.EVENT_LABEL"

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.deskclock.action.PAUSE_STOPWATCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f11022a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x7f110229

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_1

    .line 133
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.deskclock.action.START_STOPWATCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x7f11022e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x7f11022d

    .line 136
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 138
    :goto_1
    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/deskclock/HandleShortcuts;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v2, 0x10000000

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method updateShortcuts()V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/controller/ShortcutController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Skipping shortcut update because user is locked."

    .line 68
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/deskclock/controller/ShortcutController;->createNewAlarmShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcom/android/deskclock/controller/ShortcutController;->createNewTimerShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 74
    invoke-direct {p0}, Lcom/android/deskclock/controller/ShortcutController;->createStopwatchShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 75
    invoke-direct {p0}, Lcom/android/deskclock/controller/ShortcutController;->createScreensaverShortcut()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 76
    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/content/pm/ShortcutInfo;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    .line 77
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-static {p0}, Lcom/android/deskclock/LogUtils;->wtf(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
