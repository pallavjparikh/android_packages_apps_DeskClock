.class final Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;
.super Landroid/os/AsyncTask;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddCustomRingtoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    .line 540
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 533
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .line 545
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v0, p1, v6}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 551
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "title"

    .line 553
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 555
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 571
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_3
    const-string v1, "_display_name"

    .line 559
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 561
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 564
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    .line 571
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v1

    :cond_4
    :try_start_5
    const-string v1, "No ringtone for uri: %s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 569
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    if-eqz p1, :cond_7

    .line 571
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 550
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_6

    .line 571
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate title for custom ringtone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mContext:Landroid/content/Context;

    const p1, 0x7f110268

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 533
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 581
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/android/deskclock/data/DataModel;->addCustomRingtone(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/deskclock/data/CustomRingtone;

    .line 584
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$302(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 585
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$902(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Z)Z

    .line 588
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$AddCustomRingtoneTask;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
