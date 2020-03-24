.class public final Lcom/android/deskclock/data/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/Timer$State;
    }
.end annotation


# static fields
.field static EXPIRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation
.end field

.field static ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeleteAfterUse:Z

.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mLastStartTime:J

.field private final mLastStartWallClockTime:J

.field private final mLength:J

.field private final mRemainingTime:J

.field private final mState:Lcom/android/deskclock/data/Timer$State;

.field private final mTotalLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Lcom/android/deskclock/data/Timer$1;

    invoke-direct {v0}, Lcom/android/deskclock/data/Timer$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/data/Timer;->ID_COMPARATOR:Ljava/util/Comparator;

    .line 410
    new-instance v0, Lcom/android/deskclock/data/Timer$2;

    invoke-direct {v0}, Lcom/android/deskclock/data/Timer$2;-><init>()V

    sput-object v0, Lcom/android/deskclock/data/Timer;->EXPIRY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/android/deskclock/data/Timer;->mId:I

    .line 111
    iput-object p2, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    .line 112
    iput-wide p3, p0, Lcom/android/deskclock/data/Timer;->mLength:J

    .line 113
    iput-wide p5, p0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    .line 114
    iput-wide p7, p0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    .line 115
    iput-wide p9, p0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    .line 116
    iput-wide p11, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    .line 117
    iput-object p13, p0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    .line 118
    iput-boolean p14, p0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    return-void
.end method


# virtual methods
.method addMinute()Lcom/android/deskclock/data/Timer;
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    const-wide/32 v2, 0xea60

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/data/Timer;->setRemainingTime(J)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/deskclock/data/Timer;->setRemainingTime(J)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 377
    const-class v2, Lcom/android/deskclock/data/Timer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 379
    :cond_1
    check-cast p1, Lcom/android/deskclock/data/Timer;

    .line 381
    iget p0, p0, Lcom/android/deskclock/data/Timer;->mId:I

    iget p1, p1, Lcom/android/deskclock/data/Timer;->mId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method expire()Lcom/android/deskclock/data/Timer;
    .locals 20

    move-object/from16 v0, p0

    .line 221
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 226
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v6, v0, Lcom/android/deskclock/data/Timer;->mId:I

    sget-object v7, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v12

    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v14

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v5, v1

    move-object/from16 v18, v2

    move/from16 v19, v0

    invoke-direct/range {v5 .. v19}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDeleteAfterUse()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    return p0
.end method

.method public getElapsedTime()J
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getTotalLength()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot compute expiration time in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    iget-wide v2, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/deskclock/data/Timer;->mId:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method getLastStartTime()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    return-wide v0
.end method

.method getLastWallClockTime()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mLength:J

    return-wide v0
.end method

.method public getRemainingTime()J
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    sub-long/2addr v0, v2

    .line 153
    iget-wide v2, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2

    .line 146
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    return-wide v0
.end method

.method public getState()Lcom/android/deskclock/data/Timer$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    return-object p0
.end method

.method public getTotalLength()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    return-wide v0
.end method

.method public getWallClockExpirationTime()J
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot compute expiration time in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    iget-wide v2, p0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    .line 386
    iget p0, p0, Lcom/android/deskclock/data/Timer;->mId:I

    return p0
.end method

.method public isExpired()Z
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v0, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMissed()Z
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v0, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v0, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

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

    .line 127
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v0, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

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

    .line 128
    iget-object p0, p0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v0, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method miss()Lcom/android/deskclock/data/Timer;
    .locals 20

    move-object/from16 v0, p0

    .line 234
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 239
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v6, v0, Lcom/android/deskclock/data/Timer;->mId:I

    sget-object v7, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v12

    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v14

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v5, v1

    move-object/from16 v18, v2

    move/from16 v19, v0

    invoke-direct/range {v5 .. v19}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method pause()Lcom/android/deskclock/data/Timer;
    .locals 18

    move-object/from16 v0, p0

    .line 206
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    sget-object v2, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v14

    .line 213
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v4, v0, Lcom/android/deskclock/data/Timer;->mId:I

    sget-object v5, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    iget-wide v6, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    const-wide/high16 v10, -0x8000000000000000L

    const-wide/high16 v12, -0x8000000000000000L

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v3, v1

    move-object/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    .line 209
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/data/Timer;->reset()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method reset()Lcom/android/deskclock/data/Timer;
    .locals 17

    move-object/from16 v0, p0

    .line 247
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v4, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v4, :cond_0

    return-object v0

    .line 251
    :cond_0
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v3, v0, Lcom/android/deskclock/data/Timer;->mId:I

    iget-wide v13, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    const-wide/high16 v9, -0x8000000000000000L

    const-wide/high16 v11, -0x8000000000000000L

    iget-object v15, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v2, v1

    move-wide v5, v13

    move-wide v7, v13

    move/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1
.end method

.method setLabel(Ljava/lang/String;)Lcom/android/deskclock/data/Timer;
    .locals 17

    move-object/from16 v0, p0

    .line 299
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    move-object/from16 v15, p1

    invoke-static {v1, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 303
    :cond_0
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v3, v0, Lcom/android/deskclock/data/Timer;->mId:I

    iget-object v4, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    iget-wide v5, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-wide v7, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    iget-wide v9, v0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    iget-wide v11, v0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    iget-wide v13, v0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v2, v1

    move-object/from16 v15, p1

    move/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1
.end method

.method setRemainingTime(J)Lcom/android/deskclock/data/Timer;
    .locals 16

    move-object/from16 v0, p0

    .line 336
    iget-wide v1, v0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v4, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    sub-long v1, p1, v1

    .line 341
    iget-wide v4, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    add-long v5, v4, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_2

    .line 346
    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v3, v1, :cond_1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v3, v1, :cond_2

    .line 347
    :cond_1
    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    .line 348
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v2

    .line 349
    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v7

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    .line 352
    iget-wide v2, v0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    .line 353
    iget-wide v7, v0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    :goto_0
    move-wide v9, v7

    move-wide v7, v2

    move-object v2, v1

    .line 356
    new-instance v15, Lcom/android/deskclock/data/Timer;

    iget v1, v0, Lcom/android/deskclock/data/Timer;->mId:I

    iget-wide v3, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-object v13, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v0, v15

    move-wide/from16 v11, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v15

    :cond_3
    :goto_1
    return-object v0
.end method

.method start()Lcom/android/deskclock/data/Timer;
    .locals 18

    move-object/from16 v0, p0

    .line 194
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v4, v0, Lcom/android/deskclock/data/Timer;->mId:I

    sget-object v5, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    iget-wide v6, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v10

    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v3, v1

    move-object/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method updateAfterReboot()Lcom/android/deskclock/data/Timer;
    .locals 18

    move-object/from16 v0, p0

    .line 259
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v10

    .line 264
    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v12

    const-wide/16 v1, 0x0

    .line 267
    iget-wide v3, v0, Lcom/android/deskclock/data/Timer;->mLastStartWallClockTime:J

    sub-long v3, v12, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 268
    iget-wide v3, v0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    sub-long v14, v3, v1

    .line 269
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v4, v0, Lcom/android/deskclock/data/Timer;->mId:I

    iget-object v5, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    iget-wide v6, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v3, v1

    move-object/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method updateAfterTimeSet()Lcom/android/deskclock/data/Timer;
    .locals 18

    move-object/from16 v0, p0

    .line 277
    iget-object v1, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v10

    .line 282
    invoke-static {}, Lcom/android/deskclock/Utils;->wallClock()J

    move-result-wide v12

    .line 283
    iget-wide v1, v0, Lcom/android/deskclock/data/Timer;->mLastStartTime:J

    sub-long v1, v10, v1

    .line 284
    iget-wide v3, v0, Lcom/android/deskclock/data/Timer;->mRemainingTime:J

    sub-long v14, v3, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    return-object v0

    .line 291
    :cond_1
    new-instance v1, Lcom/android/deskclock/data/Timer;

    iget v4, v0, Lcom/android/deskclock/data/Timer;->mId:I

    iget-object v5, v0, Lcom/android/deskclock/data/Timer;->mState:Lcom/android/deskclock/data/Timer$State;

    iget-wide v6, v0, Lcom/android/deskclock/data/Timer;->mLength:J

    iget-wide v8, v0, Lcom/android/deskclock/data/Timer;->mTotalLength:J

    iget-object v2, v0, Lcom/android/deskclock/data/Timer;->mLabel:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/deskclock/data/Timer;->mDeleteAfterUse:Z

    move-object v3, v1

    move-object/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method
