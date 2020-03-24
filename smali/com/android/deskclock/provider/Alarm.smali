.class public final Lcom/android/deskclock/provider/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_ALARMS_WITH_INSTANCES_COLUMNS:[Ljava/lang/String;

.field private static final QUERY_COLUMNS:[Ljava/lang/String;


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/deskclock/data/Weekdays;

.field public deleteAfterUse:Z

.field public enabled:Z

.field public hour:I

.field public id:J

.field public instanceId:I

.field public instanceState:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public vibrate:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 195
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 19

    const-string v0, "_id"

    const-string v1, "hour"

    const-string v2, "minutes"

    const-string v3, "daysofweek"

    const-string v4, "enabled"

    const-string v5, "vibrate"

    const-string v6, "label"

    const-string v7, "ringtone"

    const-string v8, "delete_after_use"

    .line 53
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    const-string v1, "alarm_templates._id"

    const-string v2, "alarm_templates.hour"

    const-string v3, "alarm_templates.minutes"

    const-string v4, "alarm_templates.daysofweek"

    const-string v5, "alarm_templates.enabled"

    const-string v6, "alarm_templates.vibrate"

    const-string v7, "alarm_templates.label"

    const-string v8, "alarm_templates.ringtone"

    const-string v9, "alarm_templates.delete_after_use"

    const-string v10, "alarm_instances.alarm_state"

    const-string v11, "alarm_instances._id"

    const-string v12, "alarm_instances.year"

    const-string v13, "alarm_instances.month"

    const-string v14, "alarm_instances.day"

    const-string v15, "alarm_instances.hour"

    const-string v16, "alarm_instances.minutes"

    const-string v17, "alarm_instances.label"

    const-string v18, "alarm_instances.vibrate"

    .line 65
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/Alarm;->QUERY_ALARMS_WITH_INSTANCES_COLUMNS:[Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/android/deskclock/provider/Alarm$2;

    invoke-direct {v0}, Lcom/android/deskclock/provider/Alarm$2;-><init>()V

    sput-object v0, Lcom/android/deskclock/provider/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0, v0}, Lcom/android/deskclock/provider/Alarm;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 296
    iput-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 297
    iput p1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 298
    iput p2, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 300
    sget-object p1, Lcom/android/deskclock/data/Weekdays;->NONE:Lcom/android/deskclock/data/Weekdays;

    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    const-string p1, ""

    .line 301
    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 307
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    const/4 v1, 0x4

    .line 308
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 309
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    const/4 v2, 0x2

    .line 310
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const/4 v2, 0x3

    .line 311
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    const/4 v2, 0x5

    .line 312
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    const/4 v2, 0x6

    .line 313
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    const/16 v2, 0x8

    .line 314
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 316
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    const/16 v0, 0x9

    .line 317
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->instanceState:I

    const/16 v0, 0xa

    .line 318
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->instanceId:I

    :cond_3
    const/4 v0, 0x7

    .line 321
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2

    .line 326
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    :goto_2
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    return-void
.end method

.method public static addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 2

    .line 247
    invoke-static {p1}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 249
    invoke-static {p0}, Lcom/android/deskclock/provider/Alarm;->getId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    return-object p1
.end method

.method public static createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;
    .locals 5

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 115
    iget-wide v1, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minutes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v1}, Lcom/android/deskclock/data/Weekdays;->getBits()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "daysofweek"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "delete_after_use"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    iget-object p0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    const-string v1, "ringtone"

    if-nez p0, :cond_1

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, p3}, Lcom/android/deskclock/provider/Alarm;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static deleteAlarm(Landroid/content/ContentResolver;J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/Alarm;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method public static getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;
    .locals 6

    .line 191
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/Alarm;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 192
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 193
    new-instance p1, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p1, p0}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 195
    invoke-static {p2, p0}, Lcom/android/deskclock/provider/Alarm;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {p2, p0}, Lcom/android/deskclock/provider/Alarm;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_3

    .line 195
    invoke-static {p1, p0}, Lcom/android/deskclock/provider/Alarm;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw p2
.end method

.method public static varargs getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 225
    sget-object v2, Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 226
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 228
    :cond_0
    new-instance p1, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p1, p0}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 231
    invoke-static {p1, p0}, Lcom/android/deskclock/provider/Alarm;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p2

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/deskclock/provider/Alarm;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    return-object v0
.end method

.method public static getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8

    .line 155
    new-instance v7, Lcom/android/deskclock/provider/Alarm$1;

    sget-object v2, Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;->ALARMS_WITH_INSTANCES_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/deskclock/provider/Alarm;->QUERY_ALARMS_WITH_INSTANCES_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "alarm_templates.hour, alarm_templates.minutes ASC, alarm_templates._id DESC"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/deskclock/provider/Alarm$1;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static getContentUri(J)Landroid/net/Uri;
    .locals 1

    .line 141
    sget-object v0, Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 2

    .line 145
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isTomorrow(Lcom/android/deskclock/provider/Alarm;Ljava/util/Calendar;)Z
    .locals 3

    .line 237
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->instanceState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget p0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    add-int/2addr v0, p0

    const/16 p0, 0xb

    .line 242
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p0, p1

    if-gt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z
    .locals 4

    .line 254
    iget-wide v0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v0

    .line 256
    iget-wide v2, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v2, v3}, Lcom/android/deskclock/provider/Alarm;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v2, 0x1

    cmp-long p0, p0, v2

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public canPreemptivelyDismiss()Z
    .locals 2

    .line 358
    iget p0, p0, Lcom/android/deskclock/provider/Alarm;->instanceState:I

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 3

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 382
    new-instance v0, Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v1, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Ljava/util/Calendar;Ljava/lang/Long;)V

    .line 383
    iget-boolean p1, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    iput-boolean p1, v0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 384
    iget-object p1, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 385
    iget-object p0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    iput-object p0, v0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 444
    instance-of v0, p1, Lcom/android/deskclock/provider/Alarm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 445
    :cond_0
    check-cast p1, Lcom/android/deskclock/provider/Alarm;

    .line 446
    iget-wide v2, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    iget-wide p0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f1101c9

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 9

    .line 414
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 415
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 416
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 417
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 418
    iget v2, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 419
    iget v2, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    const/16 v5, 0xd

    .line 420
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 421
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 424
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gtz p1, :cond_0

    const/4 p1, 0x6

    .line 425
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/Weekdays;->getDistanceToNextDay(Ljava/util/Calendar;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x7

    .line 431
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 436
    :cond_1
    iget p1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 437
    iget p0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getPreviousAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 395
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 397
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 398
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 399
    iget p1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 400
    iget p1, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    const/16 v1, 0xd

    .line 401
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 402
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 404
    iget-object p0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/data/Weekdays;->getDistanceToPreviousDay(Ljava/util/Calendar;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x7

    neg-int p0, p0

    .line 406
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 451
    iget-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", daysOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", deleteAfterUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 366
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v0}, Lcom/android/deskclock/data/Weekdays;->getBits()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 373
    iget-boolean p0, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
