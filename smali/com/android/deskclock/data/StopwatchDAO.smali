.class final Lcom/android/deskclock/data/StopwatchDAO;
.super Ljava/lang/Object;
.source "StopwatchDAO.java"


# direct methods
.method static addLap(Landroid/content/SharedPreferences;IJ)V
    .locals 2

    .line 132
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sw_lap_num"

    .line 133
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw_lap_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static clearLaps(Landroid/content/SharedPreferences;)V
    .locals 5

    .line 142
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sw_lap_num"

    const/4 v2, 0x0

    .line 144
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p0, :cond_0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static getLaps(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    const-string v0, "sw_lap_num"

    const/4 v1, 0x0

    .line 100
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    if-gt v2, v0, :cond_0

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sw_lap_time_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-interface {p0, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    sub-long v7, v11, v5

    .line 115
    new-instance v13, Lcom/android/deskclock/data/Lap;

    move-object v5, v13

    move v6, v2

    move-wide v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/data/Lap;-><init>(IJJ)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-wide v5, v11

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v1
.end method

.method static getStopwatch(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/Stopwatch;
    .locals 11

    .line 59
    sget-object v0, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "sw_state"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    invoke-static {}, Lcom/android/deskclock/data/Stopwatch$State;->values()[Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v1

    aget-object v3, v1, v0

    const-wide/high16 v0, -0x8000000000000000L

    const-string v2, "sw_start_time"

    .line 61
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "sw_wall_clock_time"

    .line 62
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    const-string v2, "sw_accum_time"

    .line 63
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 64
    new-instance v10, Lcom/android/deskclock/data/Stopwatch;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    .line 67
    invoke-virtual {v10}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 68
    invoke-virtual {v10}, Lcom/android/deskclock/data/Stopwatch;->reset()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v10

    .line 69
    invoke-static {p0, v10}, Lcom/android/deskclock/data/StopwatchDAO;->setStopwatch(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Stopwatch;)V

    :cond_0
    return-object v10
.end method

.method static setStopwatch(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Stopwatch;)V
    .locals 6

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 80
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v0

    const-string v1, "sw_accum_time"

    const-string v2, "sw_wall_clock_time"

    const-string v3, "sw_start_time"

    const-string v4, "sw_state"

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 82
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 83
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 84
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->getState()Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->getLastStartTime()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->getLastWallClockTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->getAccumulatedTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
