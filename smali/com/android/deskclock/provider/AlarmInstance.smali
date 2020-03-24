.class public final Lcom/android/deskclock/provider/AlarmInstance;
.super Ljava/lang/Object;
.source "AlarmInstance.java"

# interfaces
.implements Lcom/android/deskclock/provider/ClockContract$InstancesColumns;


# static fields
.field private static final QUERY_COLUMNS:[Ljava/lang/String;


# instance fields
.field public mAlarmId:Ljava/lang/Long;

.field public mAlarmState:I

.field public mDay:I

.field public mHour:I

.field public mId:J

.field public mLabel:Ljava/lang/String;

.field public mMinute:I

.field public mMonth:I

.field public mRingtone:Landroid/net/Uri;

.field public mVibrate:Z

.field public mYear:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 146
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
    .locals 11

    const-string v0, "_id"

    const-string v1, "year"

    const-string v2, "month"

    const-string v3, "day"

    const-string v4, "hour"

    const-string v5, "minutes"

    const-string v6, "label"

    const-string v7, "vibrate"

    const-string v8, "ringtone"

    const-string v9, "alarm_id"

    const-string v10, "alarm_state"

    .line 58
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 6

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 329
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const/16 p2, 0xb

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    const/16 p2, 0xc

    .line 331
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    const/16 p2, 0xd

    .line 332
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    const/16 p2, 0xe

    .line 333
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    const/16 p2, 0xf

    .line 334
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    const/16 p2, 0x10

    .line 335
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    const/16 p2, 0x11

    .line 336
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 339
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    const/4 p2, 0x2

    .line 340
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    const/4 p2, 0x3

    .line 341
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    .line 342
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    const/4 p2, 0x5

    .line 343
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    const/4 p2, 0x6

    .line 344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    const/4 p2, 0x7

    .line 345
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    :goto_0
    const/16 p2, 0x8

    .line 347
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    goto :goto_1

    .line 352
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    :goto_1
    const/16 p2, 0x9

    .line 355
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    .line 358
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iget-wide v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    iput-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 315
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    .line 316
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    .line 317
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    .line 318
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    .line 319
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    .line 320
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 321
    iget-boolean v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    iput-boolean v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 322
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 323
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    .line 324
    iget p1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    iput p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 305
    iput-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->setAlarmTime(Ljava/util/Calendar;)V

    const-string p1, ""

    .line 307
    iput-object p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 310
    iput p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/lang/Long;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Ljava/util/Calendar;)V

    .line 301
    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    return-void
.end method

.method public static addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 245
    invoke-static {p0, v0, v2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 246
    invoke-virtual {v2}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected duplicate instance in DB. Updating "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-wide v0, v2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    iput-wide v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 251
    invoke-static {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    return-object p1

    .line 256
    :cond_1
    invoke-static {p1}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/android/deskclock/provider/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 258
    invoke-static {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    return-object p1
.end method

.method public static createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;
    .locals 5

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 92
    iget-wide v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    :cond_0
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minutes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    const-string v2, "ringtone"

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    const-string v2, "alarm_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    iget p0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "alarm_state"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, p3}, Lcom/android/deskclock/provider/AlarmInstance;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static deleteInstance(Landroid/content/ContentResolver;J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 271
    :cond_0
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getContentUri(J)Landroid/net/Uri;

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

.method public static deleteOtherInstances(Landroid/content/Context;Landroid/content/ContentResolver;JJ)V
    .locals 2

    .line 277
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object p2

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/deskclock/provider/AlarmInstance;

    .line 279
    iget-wide v0, p3, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p0, p3}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 281
    iget-wide v0, p3, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getContentUri(J)Landroid/net/Uri;
    .locals 1

    .line 131
    sget-object v0, Lcom/android/deskclock/provider/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 2

    .line 124
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 6

    .line 142
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 143
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 144
    new-instance p2, Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 146
    invoke-static {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 146
    invoke-static {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p2

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    return-object p1
.end method

.method public static varargs getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
            "Lcom/android/deskclock/provider/AlarmInstance;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 228
    sget-object v2, Lcom/android/deskclock/provider/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 229
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 231
    :cond_0
    new-instance p1, Lcom/android/deskclock/provider/AlarmInstance;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Landroid/database/Cursor;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 228
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 234
    invoke-static {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p2

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    return-object v0
.end method

.method public static getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/AlarmInstance;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstancesByState(Landroid/content/ContentResolver;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/AlarmInstance;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getNextUpcomingInstanceByAlarmId(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 2

    .line 183
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object p0

    .line 184
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 187
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 189
    invoke-virtual {p2}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z
    .locals 4

    .line 263
    iget-wide v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v0

    .line 265
    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getContentUri(J)Landroid/net/Uri;

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
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 450
    instance-of v0, p1, Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    .line 452
    iget-wide v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    iget-wide p0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlarmTime()Ljava/util/Calendar;
    .locals 3

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 388
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 389
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 390
    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 391
    iget p0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 v1, 0xd

    .line 392
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 393
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getHighNotificationTime()Ljava/util/Calendar;
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xc

    const/16 v1, -0x1e

    .line 415
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f1101c9

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getLowNotificationTime()Ljava/util/Calendar;
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, -0x2

    .line 404
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public getMissedTimeToLive()Ljava/util/Calendar;
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xa

    const/16 v1, 0xc

    .line 426
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public getTimeout()Ljava/util/Calendar;
    .locals 2

    .line 436
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getAlarmTimeout()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    const/16 v1, 0xc

    .line 444
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 457
    iget-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method

.method public setAlarmTime(Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    const/4 v0, 0x2

    .line 374
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    const/4 v0, 0x5

    .line 375
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    const/16 v0, 0xb

    .line 376
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    const/16 v0, 0xc

    .line 377
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInstance{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRingtone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
