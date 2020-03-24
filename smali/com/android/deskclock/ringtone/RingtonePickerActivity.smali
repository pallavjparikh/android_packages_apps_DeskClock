.class public Lcom/android/deskclock/ringtone/RingtonePickerActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;,
        Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;,
        Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;,
        Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/BaseActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Landroid/net/Uri;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mAlarmId:J

.field private mDefaultRingtoneTitle:Ljava/lang/String;

.field private mDefaultRingtoneUri:Landroid/net/Uri;

.field private mDropShadowController:Lcom/android/deskclock/DropShadowController;

.field private mIndexOfRingtoneToRemove:I

.field private mIsPlaying:Z

.field private mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/deskclock/ItemAdapter<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedRingtoneUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIndexOfRingtoneToRemove:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIndexOfRingtoneToRemove:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getRingtoneHolder(Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/deskclock/ringtone/RingtonePickerActivity;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIndexOfRingtoneToRemove:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Lcom/android/deskclock/ItemAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mAlarmId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->removeCustomRingtone(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->stopPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->startPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    return p1
.end method

.method public static createAlarmRingtonePickerIntent(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Landroid/content/Intent;
    .locals 3

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_title"

    const v1, 0x7f11019a

    .line 135
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    iget-wide v0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    const-string v2, "extra_alarm_id"

    .line 136
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    iget-object p1, p1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    const-string v0, "extra_ringtone_uri"

    .line 137
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x4

    .line 138
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "extra_default_ringtone_uri"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_default_ringtone_name"

    const v0, 0x7f1101c7

    .line 139
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createTimerRingtonePickerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 146
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_title"

    const v2, 0x7f110260

    .line 148
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 149
    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extra_ringtone_uri"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 150
    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "extra_default_ringtone_uri"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_default_ringtone_name"

    const v1, 0x7f1101ca

    .line 151
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getRingtoneHolder(Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;
    .locals 2

    .line 365
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 366
    instance-of v1, v0, Lcom/android/deskclock/ringtone/RingtoneHolder;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Lcom/android/deskclock/ringtone/RingtoneHolder;

    .line 368
    invoke-virtual {v0}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeCustomRingtone(Landroid/net/Uri;)V
    .locals 2

    .line 428
    new-instance v0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;)V
    .locals 3

    .line 388
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSilent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/deskclock/RingtonePreviewKlaxon;->start(Landroid/content/Context;Landroid/net/Uri;)V

    .line 390
    invoke-virtual {p1, v1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setPlaying(Z)V

    .line 391
    iput-boolean v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    invoke-virtual {p1, v1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setSelected(Z)V

    .line 395
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    return-void
.end method

.method private stopPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 411
    invoke-static {p0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->stop(Landroid/content/Context;)V

    .line 412
    invoke-virtual {p1, v1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setPlaying(Z)V

    .line 413
    iput-boolean v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    :cond_1
    if-eqz p2, :cond_2

    .line 415
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 416
    invoke-virtual {p1, v1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setSelected(Z)V

    const/4 p2, 0x0

    .line 417
    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    return-void
.end method


# virtual methods
.method getSelectedRingtoneHolder()Lcom/android/deskclock/ringtone/RingtoneHolder;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getRingtoneHolder(Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p3, :cond_1

    move-object p2, p1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 341
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eq p3, v0, :cond_3

    return-void

    .line 347
    :cond_3
    new-instance p3, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p3, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 353
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    .line 354
    iget v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIndexOfRingtoneToRemove:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/ringtone/RingtoneHolder;

    const/4 v0, -0x1

    .line 355
    iput v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIndexOfRingtoneToRemove:I

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 359
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->hasPermissions()Z

    move-result v0

    .line 360
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/net/Uri;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 156
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0075

    .line 157
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v0, 0x4

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 160
    new-instance v0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-direct {v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v3, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;

    invoke-direct {v3, p0}, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 162
    invoke-static {}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->getInstance()Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    move-result-object v2

    .line 163
    invoke-virtual {v2, p0}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->buildMenuItemControllers(Landroid/app/Activity;)[Lcom/android/deskclock/actionbarmenu/MenuItemController;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_ringtone_uri"

    if-eqz p1, :cond_0

    const-string v5, "extra_is_playing"

    .line 169
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    .line 170
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 174
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    :cond_1
    const-wide/16 v5, -0x1

    const-string p1, "extra_alarm_id"

    .line 177
    invoke-virtual {v2, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mAlarmId:J

    const-string p1, "extra_default_ringtone_uri"

    .line 178
    invoke-virtual {v2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDefaultRingtoneUri:Landroid/net/Uri;

    const-string p1, "extra_default_ringtone_name"

    .line 179
    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 180
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDefaultRingtoneTitle:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 183
    new-instance v3, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V

    .line 184
    new-instance v6, Lcom/android/deskclock/ringtone/RingtoneViewHolder$Factory;

    invoke-direct {v6, p1}, Lcom/android/deskclock/ringtone/RingtoneViewHolder$Factory;-><init>(Landroid/view/LayoutInflater;)V

    .line 185
    new-instance v7, Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;

    invoke-direct {v7, p1}, Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;-><init>(Landroid/view/LayoutInflater;)V

    .line 186
    new-instance v8, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;

    invoke-direct {v8, p1}, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;-><init>(Landroid/view/LayoutInflater;)V

    .line 187
    new-instance p1, Lcom/android/deskclock/ItemAdapter;

    invoke-direct {p1}, Lcom/android/deskclock/ItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    .line 188
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    new-array v9, v1, [I

    const v10, 0x7f0d0073

    aput v10, v9, v4

    invoke-virtual {p1, v7, v5, v9}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    new-array v7, v1, [I

    const/high16 v9, -0x80000000

    aput v9, v7, v4

    .line 189
    invoke-virtual {p1, v8, v3, v7}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    new-array v7, v1, [I

    const v8, 0x7f0d0074

    aput v8, v7, v4

    .line 190
    invoke-virtual {p1, v6, v3, v7}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    new-array v1, v1, [I

    const v7, -0x7f0d0074

    aput v7, v1, v4

    .line 191
    invoke-virtual {p1, v6, v3, v1}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    const p1, 0x7f0a00fd

    .line 193
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 195
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 198
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const-string p1, "extra_title"

    .line 207
    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 208
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v4, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 212
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;>;"
        }
    .end annotation

    .line 297
    new-instance p1, Lcom/android/deskclock/ringtone/RingtoneLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDefaultRingtoneUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDefaultRingtoneTitle:Ljava/lang/String;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/deskclock/ringtone/RingtoneLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;>;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .line 305
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRingtoneAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p1, p2}, Lcom/android/deskclock/ItemAdapter;->setItems(Ljava/util/List;)Lcom/android/deskclock/ItemAdapter;

    .line 308
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getRingtoneHolder(Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 310
    invoke-virtual {p1, p2}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setSelected(Z)V

    .line 311
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    .line 312
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    .line 315
    iget-boolean p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    if-eqz p2, :cond_1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->startPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->stop(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onPause()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    invoke-virtual {v0}, Lcom/android/deskclock/DropShadowController;->stop()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    .line 228
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 229
    iget-wide v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mAlarmId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 234
    new-instance v2, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/content/ContentResolver;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 253
    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->setTimerRingtoneUri(Landroid/net/Uri;)V

    .line 259
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onResume()V
    .locals 3

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const v0, 0x7f0a008d

    .line 219
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/android/deskclock/DropShadowController;

    iget-object v2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v0, v2}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 272
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mIsPlaying:Z

    const-string v1, "extra_is_playing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->mSelectedRingtoneUri:Landroid/net/Uri;

    const-string v0, "extra_ringtone_uri"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getSelectedRingtoneHolder()Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->stopPlayingRingtone(Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    .line 267
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
