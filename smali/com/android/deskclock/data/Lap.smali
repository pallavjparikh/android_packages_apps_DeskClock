.class public final Lcom/android/deskclock/data/Lap;
.super Ljava/lang/Object;
.source "Lap.java"


# instance fields
.field private final mAccumulatedTime:J

.field private final mLapNumber:I

.field private final mLapTime:J


# direct methods
.method constructor <init>(IJJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/deskclock/data/Lap;->mLapNumber:I

    .line 35
    iput-wide p2, p0, Lcom/android/deskclock/data/Lap;->mLapTime:J

    .line 36
    iput-wide p4, p0, Lcom/android/deskclock/data/Lap;->mAccumulatedTime:J

    return-void
.end method


# virtual methods
.method public getAccumulatedTime()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/android/deskclock/data/Lap;->mAccumulatedTime:J

    return-wide v0
.end method

.method public getLapNumber()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/deskclock/data/Lap;->mLapNumber:I

    return p0
.end method

.method public getLapTime()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/android/deskclock/data/Lap;->mLapTime:J

    return-wide v0
.end method
