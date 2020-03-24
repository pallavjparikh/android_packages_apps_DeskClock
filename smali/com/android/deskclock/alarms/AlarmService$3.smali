.class Lcom/android/deskclock/alarms/AlarmService$3;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private average:F

.field private fill:I

.field private gravity:[F

.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmService;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 370
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->gravity:[F

    const/4 p1, 0x0

    .line 371
    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->average:F

    const/4 p1, 0x0

    .line 372
    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->fill:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService$3;->gravity:[F

    const v3, 0x3f4ccccd    # 0.8f

    aget v4, v2, v1

    mul-float/2addr v4, v3

    const v3, 0x3e4ccccc    # 0.19999999f

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v0

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService$3;->gravity:[F

    aget v3, v2, v0

    sub-float/2addr v1, v3

    const/4 v3, 0x1

    .line 386
    aget v4, p1, v3

    aget v5, v2, v3

    sub-float/2addr v4, v5

    const/4 v5, 0x2

    .line 387
    aget p1, p1, v5

    aget v2, v2, v5

    sub-float/2addr p1, v2

    .line 389
    iget v2, p0, Lcom/android/deskclock/alarms/AlarmService$3;->fill:I

    const/4 v5, 0x5

    if-gt v2, v5, :cond_1

    .line 390
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService$3;->average:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/alarms/AlarmService$3;->average:F

    .line 391
    iget p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->fill:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->fill:I

    goto :goto_1

    .line 393
    :cond_1
    iget p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->average:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmService;->access$500(Lcom/android/deskclock/alarms/AlarmService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/deskclock/alarms/AlarmService;->access$400(Lcom/android/deskclock/alarms/AlarmService;I)V

    :cond_2
    const/4 p1, 0x0

    .line 396
    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$3;->average:F

    .line 397
    iput v0, p0, Lcom/android/deskclock/alarms/AlarmService$3;->fill:I

    :goto_1
    return-void
.end method
