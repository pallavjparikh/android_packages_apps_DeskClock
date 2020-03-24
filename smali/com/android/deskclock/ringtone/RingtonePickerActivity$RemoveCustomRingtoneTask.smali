.class final Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;
.super Landroid/os/AsyncTask;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveCustomRingtoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRemoveUri:Landroid/net/Uri;

.field private mSystemDefaultRingtoneUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V
    .locals 0

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 600
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 p1, 0x4

    .line 611
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mSystemDefaultRingtoneUri:Landroid/net/Uri;

    .line 614
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 615
    invoke-static {p1, v2, v1}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 616
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/provider/Alarm;

    .line 617
    iget-object v5, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    iget-object v6, v3, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mSystemDefaultRingtoneUri:Landroid/net/Uri;

    iput-object v5, v3, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 620
    new-instance v5, Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object v6, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {v5, v6, v2, v2}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;-><init>(Landroid/content/Context;Lcom/android/deskclock/alarms/ScrollHandler;Landroid/view/ViewGroup;)V

    .line 621
    invoke-virtual {v5, v3, v0, v4}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    goto :goto_0

    .line 627
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 631
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityException while releasing read permission for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 600
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 640
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 641
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mSystemDefaultRingtoneUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 646
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p1

    .line 647
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/deskclock/data/DataModel;->setTimerRingtoneUri(Landroid/net/Uri;)V

    .line 651
    :cond_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->removeCustomRingtone(Landroid/net/Uri;)V

    .line 654
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->mRemoveUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$1000(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 660
    :cond_2
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$700(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    .line 662
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$1100(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$1000(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 664
    invoke-virtual {v0, v1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->setSelected(Z)V

    .line 665
    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$302(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 666
    invoke-virtual {v0}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    .line 671
    :cond_3
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$RemoveCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$1200(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Lcom/android/deskclock/ItemAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter;->removeItem(Lcom/android/deskclock/ItemAdapter$ItemHolder;)Lcom/android/deskclock/ItemAdapter;

    return-void
.end method
