.class Lcom/android/deskclock/alarms/AlarmService$2;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSampleIndex:I

.field private mSamples:[Z

.field private mStopped:Z

.field private mWasFaceUp:Z

.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$2;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 304
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    return-void
.end method

.method private filterSamples()Z
    .locals 6

    .line 322
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-boolean v5, p0, v3

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 333
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    .line 335
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mWasFaceUp:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    iget v4, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSampleIndex:I

    const v5, 0x40dbab41

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    const v5, 0x414bfa73

    cmpg-float p1, p1, v5

    if-gez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    aput-boolean p1, v0, v4

    .line 345
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService$2;->filterSamples()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 346
    iput-boolean v3, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mWasFaceUp:Z

    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_4

    .line 348
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    aput-boolean v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    iget v4, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSampleIndex:I

    const v5, -0x3f2454bf

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    const v5, -0x3eb4058d

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    aput-boolean v2, v0, v4

    .line 357
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService$2;->filterSamples()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 358
    iput-boolean v3, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mStopped:Z

    .line 359
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$2;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmService;->access$300(Lcom/android/deskclock/alarms/AlarmService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/deskclock/alarms/AlarmService;->access$400(Lcom/android/deskclock/alarms/AlarmService;I)V

    .line 363
    :cond_4
    iget p1, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSampleIndex:I

    add-int/2addr p1, v3

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSampleIndex:I

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mWasFaceUp:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mStopped:Z

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService$2;->mSamples:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
