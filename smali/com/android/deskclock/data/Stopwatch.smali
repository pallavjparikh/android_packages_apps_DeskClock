.class public final Lcom/android/deskclock/data/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/Stopwatch$State;
    }
.end annotation


# static fields
.field private static final RESET_STOPWATCH:Lcom/android/deskclock/data/Stopwatch;


# instance fields
.field private final mAccumulatedTime:J

.field private final mLastStartTime:J

.field private final mLastStartWallClockTime:J

.field private final mState:Lcom/android/deskclock/data/Stopwatch$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    new-instance v8, Lcom/android/deskclock/data/Stopwatch;

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    sput-object v8, Lcom/android/deskclock/data/Stopwatch;->RESET_STOPWATCH:Lcom/android/deskclock/data/Stopwatch;

    return-void
.end method

.method constructor <init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    .line 51
    iput-wide p2, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartTime:J

    .line 52
    iput-wide p4, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartWallClockTime:J

    .line 53
    iput-wide p6, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    return-void
.end method


# virtual methods
.method public getAccumulatedTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    return-wide v0
.end method

.method public getLastStartTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartTime:J

    return-wide v0
.end method

.method public getLastWallClockTime()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartWallClockTime:J

    return-wide v0
.end method

.method public getState()Lcom/android/deskclock/data/Stopwatch$State;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    return-object p0
.end method

.method public getTotalTime()J
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-eq v0, v1, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    return-wide v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartTime:J

    sub-long/2addr v0, v2

    .line 75
    iget-wide v2, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public isPaused()Z
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v0, Lcom/android/deskclock/data/Stopwatch$State;->PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReset()Z
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v0, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v0, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method pause()Lcom/android/deskclock/data/Stopwatch;
    .locals 10

    .line 100
    iget-object v0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Lcom/android/deskclock/data/Stopwatch;

    sget-object v3, Lcom/android/deskclock/data/Stopwatch$State;->PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    return-object v0
.end method

.method reset()Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 111
    sget-object p0, Lcom/android/deskclock/data/Stopwatch;->RESET_STOPWATCH:Lcom/android/deskclock/data/Stopwatch;

    return-object p0
.end method

.method start()Lcom/android/deskclock/data/Stopwatch;
    .locals 9

    .line 89
    iget-object v0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v2, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-ne v0, v2, :cond_0

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Lcom/android/deskclock/data/Stopwatch;

    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v3

    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    return-object v0
.end method

.method updateAfterReboot()Lcom/android/deskclock/data/Stopwatch;
    .locals 11

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v4

    .line 124
    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    .line 127
    iget-wide v2, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartWallClockTime:J

    sub-long v2, v6, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 128
    new-instance v10, Lcom/android/deskclock/data/Stopwatch;

    iget-object v3, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    iget-wide v8, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    add-long/2addr v8, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    return-object v10
.end method

.method updateAfterTimeSet()Lcom/android/deskclock/data/Stopwatch;
    .locals 11

    .line 137
    iget-object v0, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v4

    .line 141
    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v6

    .line 142
    iget-wide v0, p0, Lcom/android/deskclock/data/Stopwatch;->mLastStartTime:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-object p0

    .line 149
    :cond_1
    new-instance v10, Lcom/android/deskclock/data/Stopwatch;

    iget-object v3, p0, Lcom/android/deskclock/data/Stopwatch;->mState:Lcom/android/deskclock/data/Stopwatch$State;

    iget-wide v8, p0, Lcom/android/deskclock/data/Stopwatch;->mAccumulatedTime:J

    add-long/2addr v8, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/data/Stopwatch;-><init>(Lcom/android/deskclock/data/Stopwatch$State;JJJ)V

    return-object v10
.end method
