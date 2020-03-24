.class Lcom/android/deskclock/provider/ClockDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClockDatabaseHelper.java"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 188
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "alarms.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 107
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE alarm_templates (_id INTEGER PRIMARY KEY,hour INTEGER NOT NULL, minutes INTEGER NOT NULL, daysofweek INTEGER NOT NULL, enabled INTEGER NOT NULL, vibrate INTEGER NOT NULL, label TEXT NOT NULL, ringtone TEXT, delete_after_use INTEGER NOT NULL DEFAULT 0);"

    .line 74
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Alarms Table created"

    .line 84
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE alarm_instances (_id INTEGER PRIMARY KEY,year INTEGER NOT NULL, month INTEGER NOT NULL, day INTEGER NOT NULL, hour INTEGER NOT NULL, minutes INTEGER NOT NULL, vibrate INTEGER NOT NULL, label TEXT NOT NULL, ringtone TEXT, alarm_state INTEGER NOT NULL, alarm_id INTEGER REFERENCES alarm_templates(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 88
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Instance table created"

    .line 103
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method fixAlarmInsert(Landroid/content/ContentValues;)J
    .locals 10

    const-string v0, "_id"

    .line 198
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 205
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 207
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 209
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    const-string v2, "alarm_templates"

    const-string v4, "_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 210
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 212
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_2

    .line 216
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 210
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    .line 216
    :try_start_4
    invoke-static {p1, v1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v0

    :cond_2
    :goto_0
    const-string v0, "alarm_templates"

    const-string v1, "ringtone"

    .line 220
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_3

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Added alarm rowId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    .line 226
    :cond_3
    new-instance p0, Landroid/database/SQLException;

    const-string p1, "Failed to insert row"

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p1

    .line 223
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 112
    invoke-static {p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    invoke-static {p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Inserting default alarms"

    .line 116
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INSERT INTO alarm_templates (hour"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "minutes"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "daysofweek"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vibrate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "label"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "delete_after_use"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") VALUES "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(8, 30, 31, 0, 1, \'\', NULL, 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(9, 00, 96, 0, 1, \'\', NULL, 0);"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/Object;

    .line 133
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v2, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v2, v11

    const-string v3, "Upgrading alarms database from version %d to %d"

    invoke-static {v3, v2}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x7

    if-gt v1, v12, :cond_0

    const-string v2, "DROP TABLE IF EXISTS selected_cities;"

    .line 137
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x6

    if-gt v1, v13, :cond_9

    const-string v1, "DROP TABLE IF EXISTS alarm_instances;"

    .line 142
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Copying old alarms to new table"

    .line 148
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v14, "_id"

    const-string v15, "hour"

    const-string v16, "minutes"

    const-string v17, "daysofweek"

    const-string v18, "enabled"

    const-string v19, "vibrate"

    const-string v20, "message"

    const-string v21, "alert"

    .line 149
    filled-new-array/range {v14 .. v21}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "alarms"

    move-object/from16 v1, p1

    .line 159
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 161
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    new-instance v4, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v4}, Lcom/android/deskclock/provider/Alarm;-><init>()V

    .line 164
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 165
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 166
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const/4 v5, 0x3

    .line 167
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object v5

    iput-object v5, v4, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    const/4 v5, 0x4

    .line 168
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v11, :cond_2

    move v5, v11

    goto :goto_1

    :cond_2
    move v5, v10

    :goto_1
    iput-boolean v5, v4, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    const/4 v5, 0x5

    .line 169
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v11, :cond_3

    move v5, v11

    goto :goto_2

    :cond_3
    move v5, v10

    :goto_2
    iput-boolean v5, v4, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 170
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 172
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "silent"

    .line 173
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    sget-object v5, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    iput-object v5, v4, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_4

    .line 177
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v3

    goto :goto_3

    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_3
    iput-object v5, v4, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    :goto_4
    const-string v5, "alarm_templates"

    .line 181
    invoke-static {v4}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v0, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 182
    iget-boolean v5, v4, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v5, :cond_1

    .line 183
    invoke-virtual {v4, v2}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v4

    const-string v5, "alarm_instances"

    .line 185
    invoke-static {v4}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v4

    .line 184
    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 188
    invoke-static {v3, v1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_7
    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Dropping old alarm table"

    .line 190
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "DROP TABLE IF EXISTS alarms;"

    .line 191
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 159
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_8

    .line 188
    invoke-static {v2, v1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v3

    :cond_9
    :goto_5
    return-void
.end method
