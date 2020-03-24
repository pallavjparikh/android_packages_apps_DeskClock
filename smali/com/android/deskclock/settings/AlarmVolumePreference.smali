.class public Lcom/android/deskclock/settings/AlarmVolumePreference;
.super Landroidx/preference/Preference;
.source "AlarmVolumePreference.java"


# instance fields
.field private mAlarmIcon:Landroid/widget/ImageView;

.field private mPreviewPlaying:Z

.field private mSeekbar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/settings/AlarmVolumePreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/settings/AlarmVolumePreference;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->onSeekbarChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/settings/AlarmVolumePreference;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mPreviewPlaying:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/deskclock/settings/AlarmVolumePreference;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mPreviewPlaying:Z

    return p1
.end method

.method private doesDoNotDisturbAllowAlarmPlayback()Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->doesDoNotDisturbAllowAlarmPlaybackNPlus()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private doesDoNotDisturbAllowAlarmPlaybackNPlus()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 137
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSeekbarChanged()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->doesDoNotDisturbAllowAlarmPlayback()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mAlarmIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f080081

    goto :goto_0

    :cond_0
    const p0, 0x7f080083

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 62
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    const v2, 0x7f0a003e

    .line 64
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    .line 65
    iget-object v2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget-object v2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const v2, 0x7f0a003d

    .line 67
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mAlarmIcon:Landroid/widget/ImageView;

    .line 68
    invoke-direct {p0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->onSeekbarChanged()V

    .line 70
    new-instance p1, Lcom/android/deskclock/settings/AlarmVolumePreference$1;

    iget-object v2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {p1, p0, v2, v1}, Lcom/android/deskclock/settings/AlarmVolumePreference$1;-><init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/os/Handler;Landroid/media/AudioManager;)V

    .line 78
    iget-object v2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/deskclock/settings/AlarmVolumePreference$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/deskclock/settings/AlarmVolumePreference$2;-><init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 91
    iget-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/deskclock/settings/AlarmVolumePreference$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/deskclock/settings/AlarmVolumePreference$3;-><init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/media/AudioManager;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
