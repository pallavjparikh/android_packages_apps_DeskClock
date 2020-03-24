.class public final Lcom/android/deskclock/ClockFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;,
        Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;,
        Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;,
        Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;,
        Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;,
        Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;,
        Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;
    }
.end annotation


# instance fields
.field private mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAnalogClock:Lcom/android/deskclock/AnalogClock;

.field private mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

.field private mCityList:Landroidx/recyclerview/widget/RecyclerView;

.field private mClockFrame:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDigitalClock:Landroid/widget/TextClock;

.field private final mQuarterHourUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClockFragment;-><init>(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 69
    new-instance v0, Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;-><init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/ClockFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment;->refreshAlarm()V

    return-void
.end method

.method private refreshAlarm()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->access$700(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Lcom/android/deskclock/Utils;->isPreL()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;

    invoke-direct {p1, p0, v0}, Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;-><init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 97
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;

    invoke-direct {p1, p0, v0}, Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;-><init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0d0028

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f110155

    .line 106
    invoke-virtual {p0, p3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    const p3, 0x7f1101d9

    .line 107
    invoke-virtual {p0, p3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 109
    new-instance p3, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/deskclock/ClockFragment$1;)V

    iput-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    const p3, 0x7f0a005d

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p3

    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-virtual {p3, v0}, Lcom/android/deskclock/data/DataModel;->addCityListener(Lcom/android/deskclock/data/CityListener;)V

    .line 118
    new-instance p3, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;

    invoke-direct {p3, p0, v3}, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 121
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 122
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;

    invoke-direct {v0, p0, p2, v3}, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;-><init>(Lcom/android/deskclock/ClockFragment;Landroid/content/Context;Lcom/android/deskclock/ClockFragment$1;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    new-instance p2, Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;

    invoke-direct {p2, p0, v3}, Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;-><init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f0a00c7

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    .line 128
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    if-eqz p2, :cond_0

    const p3, 0x7f0a0089

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextClock;

    iput-object p2, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/widget/TextClock;

    .line 130
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    const p3, 0x7f0a004a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/AnalogClock;

    iput-object p2, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    .line 131
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {p2}, Lcom/android/deskclock/Utils;->setClockIconTypeface(Landroid/view/View;)V

    .line 132
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;

    invoke-static {p2, p3, v0}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 133
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/widget/TextClock;

    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {p2, p3}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 134
    iget-object p2, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/widget/TextClock;

    iget-object p3, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {p2, p3}, Lcom/android/deskclock/Utils;->setClockSecondsEnabled(Landroid/widget/TextClock;Lcom/android/deskclock/AnalogClock;)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p2

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->addQuarterHourCallback(Ljava/lang/Runnable;J)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 196
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    .line 197
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->removeCityListener(Lcom/android/deskclock/data/CityListener;)V

    return-void
.end method

.method public onFabClick(Landroid/widget/ImageView;)V
    .locals 2

    .line 202
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 184
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 145
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f110155

    .line 149
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;

    const v1, 0x7f1101d9

    .line 150
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/widget/TextClock;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    if-eqz v2, :cond_1

    .line 160
    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mDigitalClock:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->setClockSecondsEnabled(Landroid/widget/TextClock;Lcom/android/deskclock/AnalogClock;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v3, 0x7f0a00c7

    .line 165
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mCityList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/deskclock/ClockFragment;->mCityAdapter:Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    invoke-virtual {v3}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x8

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment;->refreshAlarm()V

    .line 173
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_4

    const-string v1, "next_alarm_formatted"

    .line 175
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method public onUpdateFab(Landroid/widget/ImageView;)V
    .locals 1

    const/4 p0, 0x0

    .line 207
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p0, 0x7f08009e

    .line 208
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1101ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    const/4 p0, 0x4

    .line 214
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
