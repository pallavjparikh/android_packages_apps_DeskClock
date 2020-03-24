.class public Lcom/android/deskclock/DeskClockBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "DeskClockBackupAgent.java"


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "DeskClockBackupAgent"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/DeskClockBackupAgent;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method public static processRestoredData(Landroid/content/Context;)Z
    .locals 8

    .line 111
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->isRestoreBackupFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    sget-object v0, Lcom/android/deskclock/DeskClockBackupAgent;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "processRestoredData() started"

    invoke-virtual {v0, v3, v2}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/String;

    .line 119
    invoke-static {v0, v2, v3}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/provider/Alarm;

    .line 125
    iget-wide v6, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p0, v6, v7}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 127
    iget-boolean v6, v4, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v6, :cond_1

    .line 129
    invoke-virtual {v4, v3}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v4

    .line 132
    invoke-static {v0, v4}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    .line 135
    invoke-static {p0, v4, v5}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 136
    sget-object v6, Lcom/android/deskclock/DeskClockBackupAgent;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "DeskClockBackupAgent scheduled alarm instance: %s"

    invoke-virtual {v6, v4, v5}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/DataModel;->setRestoreBackupFinished(Z)V

    .line 143
    sget-object p0, Lcom/android/deskclock/DeskClockBackupAgent;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "processRestoredData() completed"

    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_preferences.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    .line 66
    invoke-super/range {v3 .. v12}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    return-void
.end method

.method public onRestoreFinished()V
    .locals 9

    .line 82
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    .line 88
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->setRestoreBackupFinished(Z)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.action.COMPLETE_RESTORE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/android/deskclock/AlarmInitReceiver;

    .line 92
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x50000000

    const/4 v4, 0x0

    .line 91
    invoke-static {p0, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    const-string v3, "alarm"

    .line 99
    invoke-virtual {p0, v3}, Landroid/app/backup/BackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 100
    invoke-virtual {p0, v3, v5, v6, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 102
    sget-object p0, Lcom/android/deskclock/DeskClockBackupAgent;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v1, "Waiting for %s to complete the data restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
